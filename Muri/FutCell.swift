import UIKit

class FutCell: UITableViewCell{
    private let horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 16
        return stack
    }()
    
    private let futImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .blue
        return imageView
    }()

        private let verticalStack: UIStackView = {
            let stack = UIStackView()
            stack.translatesAutoresizingMaskIntoConstraints = false
            stack.axis = .vertical
            stack.spacing = 8
            return stack
        }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize:16, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    private let releaseDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize:14)
        label.textColor = .darkGray
        label.numberOfLines = 0
        return label
    }()
    
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        addViewsInHierarchy()
        setupConstraints()
    }
    @available(*, unavailable)
    required init?(coder:NSCoder) {
        nil
    }
    
    private func addViewsInHierarchy(){
        contentView.addSubview(horizontalStack)
        horizontalStack.addArrangedSubview(futImageView)
        horizontalStack.addArrangedSubview(verticalStack)
        verticalStack.addArrangedSubview(titleLabel)
        verticalStack.addArrangedSubview(releaseDateLabel)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
                   horizontalStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
                   horizontalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
                   horizontalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
                   horizontalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
                   ])
    }
    
    public func setup(fut:Fut){
        titleLabel.text = fut.title
        releaseDateLabel.text = "Liga: \(fut.releaseDate)"
    }
    
    private func setupView(){
        selectionStyle = .none
        
        
        NSLayoutConstraint.activate([
            futImageView.widthAnchor.constraint(equalToConstant: 90),
            futImageView.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
    
}

